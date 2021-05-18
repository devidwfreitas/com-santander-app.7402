.class public Lcom/santander/app/seguros/utils/SmoothScrollerLinearLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/santander/app/seguros/utils/SmoothScrollerLinearLayoutManager;->a:Z

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/santander/app/seguros/utils/SmoothScrollerLinearLayoutManager;->a:Z

    .line 30
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/santander/app/seguros/utils/SmoothScrollerLinearLayoutManager;->a:Z

    .line 22
    return-void
.end method

.method public canScrollVertically()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/santander/app/seguros/utils/SmoothScrollerLinearLayoutManager;->a:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/support/v7/widget/LinearLayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lmhx;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lmhx;-><init>(Lcom/santander/app/seguros/utils/SmoothScrollerLinearLayoutManager;Landroid/content/Context;)V

    .line 40
    invoke-virtual {v0, p3}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 41
    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/utils/SmoothScrollerLinearLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    .line 42
    return-void
.end method
