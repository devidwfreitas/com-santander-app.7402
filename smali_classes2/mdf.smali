.class public Lmdf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmde;


# instance fields
.field final synthetic a:Lmda;


# direct methods
.method public constructor <init>(Lmda;)V
    .locals 0

    .prologue
    .line 1998
    iput-object p1, p0, Lmdf;->a:Lmda;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    const v1, 0x7f100008

    .line 2025
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmdt;

    .line 2026
    if-eqz v0, :cond_0

    .line 2027
    invoke-interface {v0, p1}, Lmdt;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 2029
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2030
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100009

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2034
    :goto_0
    return-void

    .line 2032
    :cond_0
    const-string v0, "FastAdapter"

    const-string v1, "The bindView method of this item should set the `Tag` on its itemView (https://github.com/mikepenz/FastAdapter/blob/develop/library-core/src/main/java/com/mikepenz/fastadapter/items/AbstractItem.java#L189)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2008
    iget-object v0, p0, Lmdf;->a:Lmda;

    invoke-virtual {v0, p2}, Lmda;->b(I)Lmdt;

    move-result-object v0

    .line 2009
    if-eqz v0, :cond_0

    .line 2011
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f100008

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2013
    invoke-interface {v0, p1, p3}, Lmdt;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V

    .line 2015
    :cond_0
    return-void
.end method

.method public b(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .prologue
    .line 2044
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100008

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmdt;

    .line 2045
    if-eqz v0, :cond_0

    .line 2047
    :try_start_0
    invoke-interface {v0, p1}, Lmdt;->b(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 2052
    :cond_0
    :goto_0
    return-void

    .line 2048
    :catch_0
    move-exception v0

    .line 2049
    const-string v1, "WTF"

    invoke-virtual {v0}, Ljava/lang/AbstractMethodError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public c(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .prologue
    .line 2062
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100008

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmdt;

    .line 2063
    if-eqz v0, :cond_0

    .line 2064
    invoke-interface {v0, p1}, Lmdt;->c(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 2066
    :cond_0
    return-void
.end method

.method public d(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)Z
    .locals 2

    .prologue
    .line 2078
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100008

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmdt;

    .line 2079
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lmdt;->d(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
