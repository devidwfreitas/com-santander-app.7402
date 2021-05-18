.class final Lmep;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field final synthetic b:Lmei;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lmei;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lmep;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iput-object p2, p0, Lmep;->b:Lmei;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .prologue
    .line 87
    iget-object v0, p0, Lmep;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100008

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lmep;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f100009

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 89
    instance-of v2, v0, Lmdt;

    if-eqz v2, :cond_0

    instance-of v2, v1, Lmda;

    if-eqz v2, :cond_0

    .line 90
    check-cast v0, Lmdt;

    .line 91
    check-cast v1, Lmda;

    .line 93
    iget-object v2, p0, Lmep;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1, v2}, Lmda;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v3

    .line 95
    const/4 v2, -0x1

    if-eq v3, v2, :cond_0

    .line 97
    iget-object v2, p0, Lmep;->b:Lmei;

    check-cast v2, Lmek;

    invoke-virtual {v2, p1, v3, v1, v0}, Lmek;->a(Landroid/view/View;ILmda;Lmdt;)Z

    move-result v0

    .line 100
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
