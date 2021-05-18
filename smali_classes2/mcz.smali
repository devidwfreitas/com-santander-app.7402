.class public abstract Lmcz;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"

# interfaces
.implements Lmdm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lmdt;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter;",
        "Lmdm",
        "<TItem;>;"
    }
.end annotation


# instance fields
.field private a:Lmda;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmda",
            "<TItem;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lmda;)Lmcz;
    .locals 1

    .prologue
    .line 29
    iput-object p1, p0, Lmcz;->a:Lmda;

    .line 30
    iget-object v0, p0, Lmcz;->a:Lmda;

    invoke-virtual {v0, p0}, Lmda;->a(Lmcz;)V

    .line 31
    return-object p0
.end method

.method public a(Lmdm;)Lmcz;
    .locals 1

    .prologue
    .line 42
    invoke-interface {p1}, Lmdm;->a()Lmda;

    move-result-object v0

    iput-object v0, p0, Lmcz;->a:Lmda;

    .line 43
    iget-object v0, p0, Lmcz;->a:Lmda;

    invoke-virtual {v0, p0}, Lmda;->a(Lmcz;)V

    .line 44
    return-object p0
.end method

.method public a()Lmda;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmda",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lmcz;->a:Lmda;

    return-object v0
.end method

.method public a(I)Lmdt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lmcz;->a:Lmda;

    invoke-virtual {v0, p1}, Lmda;->b(I)Lmdt;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TItem;>;)V"
        }
    .end annotation

    .prologue
    .line 236
    if-eqz p1, :cond_0

    .line 237
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmdt;

    .line 238
    invoke-virtual {p0, v0}, Lmcz;->a(Lmdt;)V

    goto :goto_0

    .line 241
    :cond_0
    return-void
.end method

.method public a(Lmdt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)V"
        }
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lmcz;->a:Lmda;

    invoke-virtual {v0, p1}, Lmda;->a(Lmdt;)V

    .line 250
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lmcz;->a:Lmda;

    invoke-virtual {v0}, Lmda;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lmcz;->a:Lmda;

    invoke-virtual {v0, p1}, Lmda;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lmcz;->a:Lmda;

    invoke-virtual {v0, p1}, Lmda;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public l_()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lmcz;->a:Lmda;

    invoke-virtual {v0}, Lmda;->e()V

    .line 257
    return-void
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lmcz;->a:Lmda;

    invoke-virtual {v0, p1}, Lmda;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 218
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lmcz;->a:Lmda;

    invoke-virtual {v0, p1, p2}, Lmda;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 145
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lmcz;->a:Lmda;

    invoke-virtual {v0, p1, p2, p3}, Lmda;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    .line 157
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lmcz;->a:Lmda;

    invoke-virtual {v0, p1, p2}, Lmda;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lmcz;->a:Lmda;

    invoke-virtual {v0, p1}, Lmda;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 228
    return-void
.end method

.method public onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lmcz;->a:Lmda;

    invoke-virtual {v0, p1}, Lmda;->onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method public onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lmcz;->a:Lmda;

    invoke-virtual {v0, p1}, Lmda;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 208
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lmcz;->a:Lmda;

    invoke-virtual {v0, p1}, Lmda;->onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 198
    return-void
.end method

.method public onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lmcz;->a:Lmda;

    invoke-virtual {v0, p1}, Lmda;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 177
    return-void
.end method

.method public registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 55
    iget-object v0, p0, Lmcz;->a:Lmda;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lmcz;->a:Lmda;

    invoke-virtual {v0, p1}, Lmda;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 58
    :cond_0
    return-void
.end method

.method public setHasStableIds(Z)V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lmcz;->a:Lmda;

    invoke-virtual {v0, p1}, Lmda;->setHasStableIds(Z)V

    .line 167
    return-void
.end method

.method public unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 68
    iget-object v0, p0, Lmcz;->a:Lmda;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lmcz;->a:Lmda;

    invoke-virtual {v0, p1}, Lmda;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 71
    :cond_0
    return-void
.end method
