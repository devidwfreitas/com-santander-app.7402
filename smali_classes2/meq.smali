.class final Lmeq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field final synthetic b:Lmei;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lmei;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lmeq;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iput-object p2, p0, Lmeq;->b:Lmei;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    .line 108
    iget-object v0, p0, Lmeq;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100008

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    .line 109
    iget-object v0, p0, Lmeq;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100009

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    .line 110
    instance-of v0, v5, Lmdt;

    if-eqz v0, :cond_0

    instance-of v0, v4, Lmda;

    if-eqz v0, :cond_0

    .line 111
    check-cast v5, Lmdt;

    .line 112
    check-cast v4, Lmda;

    .line 114
    iget-object v0, p0, Lmeq;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v4, v0}, Lmda;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v3

    .line 116
    const/4 v0, -0x1

    if-eq v3, v0, :cond_0

    .line 118
    iget-object v0, p0, Lmeq;->b:Lmei;

    check-cast v0, Lmel;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lmel;->a(Landroid/view/View;Landroid/view/MotionEvent;ILmda;Lmdt;)Z

    move-result v0

    .line 121
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
