.class public abstract Lmet;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lmdt;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TItem;>;"
        }
    .end annotation
.end field

.field private b:Landroid/support/v7/widget/RecyclerView$Adapter;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TItem;>;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmet;->a:Ljava/util/List;

    .line 28
    iput-object p1, p0, Lmet;->a:Ljava/util/List;

    .line 29
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lmet;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$Adapter;)Lmet;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lmet;->b:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 48
    return-object p0
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TItem;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    iput-object p1, p0, Lmet;->a:Ljava/util/List;

    .line 37
    return-void
.end method

.method public abstract a(I)Z
.end method

.method public abstract b(I)I
.end method

.method public b()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lmet;->b:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method public c(I)Lmdt;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lmet;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lmet;->a:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Lmet;->b(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmdt;

    .line 141
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lmet;->b:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    .line 152
    invoke-virtual {p0, v0}, Lmet;->b(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lmet;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0, p1}, Lmet;->c(I)Lmdt;

    move-result-object v0

    invoke-interface {v0}, Lmdt;->j()J

    move-result-wide v0

    .line 120
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lmet;->b:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p1}, Lmet;->b(I)I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lmet;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0, p1}, Lmet;->c(I)Lmdt;

    move-result-object v0

    invoke-interface {v0}, Lmdt;->b()I

    move-result v0

    .line 105
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmet;->b:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p1}, Lmet;->b(I)I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lmet;->b:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 253
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 2

    .prologue
    .line 187
    invoke-virtual {p0, p2}, Lmet;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p0, p2}, Lmet;->c(I)Lmdt;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Lmdt;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lmet;->b:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p2}, Lmet;->b(I)I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {v0, p1, v1, p3}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    .prologue
    .line 165
    iget-object v0, p0, Lmet;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmdt;

    .line 166
    invoke-interface {v0}, Lmdt;->b()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 167
    invoke-interface {v0, p1}, Lmdt;->a(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 170
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lmet;->b:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    goto :goto_0
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lmet;->b:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 263
    return-void
.end method

.method public onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lmet;->b:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method public onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lmet;->b:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 243
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lmet;->b:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 233
    return-void
.end method

.method public onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lmet;->b:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 212
    return-void
.end method

.method public registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 76
    iget-object v0, p0, Lmet;->b:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lmet;->b:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 79
    :cond_0
    return-void
.end method

.method public setHasStableIds(Z)V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lmet;->b:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 202
    return-void
.end method

.method public unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 89
    iget-object v0, p0, Lmet;->b:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lmet;->b:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 92
    :cond_0
    return-void
.end method
