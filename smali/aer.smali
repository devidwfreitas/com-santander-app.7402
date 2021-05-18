.class public abstract Laer;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;


# instance fields
.field a:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private b:I

.field private c:I

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/LinearLayoutManager;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 v0, 0x7

    iput v0, p0, Laer;->b:I

    const/4 v0, 0x0

    iput v0, p0, Laer;->c:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Laer;->d:Z

    iput-object p1, p0, Laer;->a:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Laer;->c:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Laer;->d:Z

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Laer;->e:Z

    return-void
.end method

.method public abstract b()V
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 3

    if-lez p3, :cond_1

    iget-object v0, p0, Laer;->a:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    iget-object v1, p0, Laer;->a:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v1

    iget-boolean v2, p0, Laer;->d:Z

    if-eqz v2, :cond_0

    iget v2, p0, Laer;->c:I

    if-le v1, v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Laer;->d:Z

    iput v1, p0, Laer;->c:I

    :cond_0
    iget-boolean v2, p0, Laer;->d:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Laer;->e:Z

    if-eqz v2, :cond_1

    iget v2, p0, Laer;->b:I

    add-int/2addr v0, v2

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Laer;->b()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Laer;->d:Z

    :cond_1
    return-void
.end method
