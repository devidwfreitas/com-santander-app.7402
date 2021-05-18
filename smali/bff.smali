.class public Lbff;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/support/v7/widget/LinearLayoutManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final b:Landroid/support/v7/widget/GridLayoutManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final c:Landroid/support/v7/widget/StaggeredGridLayoutManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 3
    .param p1    # Landroid/support/v7/widget/RecyclerView$LayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 342
    const-class v1, Landroid/support/v7/widget/LinearLayoutManager;

    if-ne v0, v1, :cond_0

    .line 343
    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager;

    iput-object p1, p0, Lbff;->a:Landroid/support/v7/widget/LinearLayoutManager;

    .line 344
    iput-object v2, p0, Lbff;->b:Landroid/support/v7/widget/GridLayoutManager;

    .line 345
    iput-object v2, p0, Lbff;->c:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    .line 357
    :goto_0
    return-void

    .line 346
    :cond_0
    const-class v1, Landroid/support/v7/widget/GridLayoutManager;

    if-ne v0, v1, :cond_1

    .line 347
    iput-object v2, p0, Lbff;->a:Landroid/support/v7/widget/LinearLayoutManager;

    .line 348
    check-cast p1, Landroid/support/v7/widget/GridLayoutManager;

    iput-object p1, p0, Lbff;->b:Landroid/support/v7/widget/GridLayoutManager;

    .line 349
    iput-object v2, p0, Lbff;->c:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    goto :goto_0

    .line 355
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Currently RecyclerViewHeader supports only LinearLayoutManager and GridLayoutManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Lbff;
    .locals 1
    .param p0    # Landroid/support/v7/widget/RecyclerView$LayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 360
    new-instance v0, Lbff;

    invoke-direct {v0, p0}, Lbff;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lbff;->a:Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    .line 365
    const/4 v0, 0x1

    .line 371
    :goto_0
    return v0

    .line 366
    :cond_0
    iget-object v0, p0, Lbff;->b:Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lbff;->b:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    goto :goto_0

    .line 371
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 375
    iget-object v2, p0, Lbff;->a:Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v2, :cond_2

    .line 376
    iget-object v2, p0, Lbff;->a:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    if-nez v2, :cond_1

    .line 382
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 376
    goto :goto_0

    .line 377
    :cond_2
    iget-object v2, p0, Lbff;->b:Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v2, :cond_3

    .line 378
    iget-object v2, p0, Lbff;->b:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 382
    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lbff;->a:Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lbff;->a:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->getReverseLayout()Z

    move-result v0

    .line 393
    :goto_0
    return v0

    .line 388
    :cond_0
    iget-object v0, p0, Lbff;->b:Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lbff;->b:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getReverseLayout()Z

    move-result v0

    goto :goto_0

    .line 393
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 397
    iget-object v2, p0, Lbff;->a:Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v2, :cond_2

    .line 398
    iget-object v2, p0, Lbff;->a:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->getOrientation()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 404
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 398
    goto :goto_0

    .line 399
    :cond_2
    iget-object v2, p0, Lbff;->b:Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v2, :cond_3

    .line 400
    iget-object v2, p0, Lbff;->b:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayoutManager;->getOrientation()I

    move-result v2

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 404
    goto :goto_0
.end method
