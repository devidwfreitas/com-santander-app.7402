.class public abstract Lmeh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmei;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lmdt;",
        ">",
        "Ljava/lang/Object;",
        "Lmei",
        "<TItem;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
.end method

.method public b(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Ljava/util/List;
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Lmda;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ")",
            "Lmda",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100009

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 40
    instance-of v1, v0, Lmda;

    if-eqz v1, :cond_0

    .line 41
    check-cast v0, Lmda;

    .line 43
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Lmdt;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ")TItem;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-virtual {p0, p1}, Lmeh;->c(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Lmda;

    move-result-object v0

    .line 55
    if-nez v0, :cond_0

    move-object v0, v1

    .line 68
    :goto_0
    return-object v0

    .line 59
    :cond_0
    invoke-virtual {v0, p1}, Lmda;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 61
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 63
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f100008

    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 64
    instance-of v2, v0, Lmdt;

    if-eqz v2, :cond_1

    .line 65
    check-cast v0, Lmdt;

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 68
    goto :goto_0
.end method
