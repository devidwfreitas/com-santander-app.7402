.class public Ljnq;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;)V
    .locals 1

    .prologue
    .line 166
    iput-object p1, p0, Ljnq;->a:Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 167
    const/4 v0, -0x1

    iput v0, p0, Ljnq;->b:I

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 2

    .prologue
    .line 170
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 171
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .line 172
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    .line 173
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v1, p0, Ljnq;->b:I

    if-eq v0, v1, :cond_0

    if-nez p2, :cond_0

    .line 176
    iput v0, p0, Ljnq;->b:I

    .line 177
    iget-object v1, p0, Ljnq;->a:Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;

    invoke-static {v1, v0}, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->a(Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;I)V

    .line 179
    :cond_0
    return-void
.end method
