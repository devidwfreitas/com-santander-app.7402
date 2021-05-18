.class final Lmeo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field final synthetic b:Lmei;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lmei;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lmeo;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iput-object p2, p0, Lmeo;->b:Lmei;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 67
    iget-object v0, p0, Lmeo;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100008

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lmeo;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f100009

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 69
    instance-of v2, v0, Lmdt;

    if-eqz v2, :cond_0

    instance-of v2, v1, Lmda;

    if-eqz v2, :cond_0

    .line 70
    check-cast v0, Lmdt;

    .line 71
    check-cast v1, Lmda;

    .line 73
    iget-object v2, p0, Lmeo;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1, v2}, Lmda;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v3

    .line 75
    const/4 v2, -0x1

    if-eq v3, v2, :cond_0

    .line 77
    iget-object v2, p0, Lmeo;->b:Lmei;

    check-cast v2, Lmeg;

    invoke-virtual {v2, p1, v3, v1, v0}, Lmeg;->a(Landroid/view/View;ILmda;Lmdt;)V

    .line 80
    :cond_0
    return-void
.end method
