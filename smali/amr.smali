.class public abstract Lamr;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Lamu;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<TVH;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private d:Lamh;

.field private e:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 460
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 444
    new-instance v0, Lams;

    invoke-direct {v0, p0}, Lams;-><init>(Lamr;)V

    iput-object v0, p0, Lamr;->e:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .line 461
    iput-object p1, p0, Lamr;->b:Ljava/util/List;

    .line 462
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lamr;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lamr;->a:Ljava/util/List;

    .line 463
    iget-object v0, p0, Lamr;->e:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p0, v0}, Lamr;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 464
    return-void
.end method

.method public static synthetic a(Lamr;Lamh;)Lamh;
    .locals 0

    .prologue
    .line 435
    iput-object p1, p0, Lamr;->d:Lamh;

    return-object p1
.end method

.method static synthetic a(Lamr;Landroid/view/ViewGroup;I)Lamu;
    .locals 1

    .prologue
    .line 435
    invoke-direct {p0, p1, p2}, Lamr;->a(Landroid/view/ViewGroup;I)Lamu;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;I)Lamu;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    .prologue
    .line 476
    invoke-virtual {p0, p2}, Lamr;->getItemViewType(I)I

    move-result v0

    .line 477
    invoke-virtual {p0, p1, v0}, Lamr;->createViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lamu;

    .line 478
    invoke-virtual {p0, v0, p2}, Lamr;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 479
    iget-object v1, v0, Lamu;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 480
    return-object v0
.end method

.method static synthetic a(Lamr;)Ljava/util/List;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lamr;->b:Ljava/util/List;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 484
    iget-object v0, p0, Lamr;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 485
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lamr;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 486
    iget-object v1, p0, Lamr;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 487
    iget-object v2, p0, Lamr;->d:Lamh;

    invoke-interface {v2}, Lamh;->c()Ljava/lang/Object;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 488
    iget-object v2, p0, Lamr;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 491
    :cond_1
    invoke-direct {p0}, Lamr;->c()V

    .line 492
    invoke-virtual {p0}, Lamr;->notifyDataSetChanged()V

    .line 493
    return-void
.end method

.method static synthetic b(Lamr;)V
    .locals 0

    .prologue
    .line 435
    invoke-direct {p0}, Lamr;->b()V

    return-void
.end method

.method public static synthetic c(Lamr;)Ljava/util/List;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lamr;->a:Ljava/util/List;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 496
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lamr;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lamr;->c:Ljava/util/List;

    .line 497
    return-void
.end method

.method static synthetic d(Lamr;)Lamh;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lamr;->d:Lamh;

    return-object v0
.end method

.method private d()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 500
    iget-object v1, p0, Lamr;->c:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lamr;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lamr;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 507
    :cond_0
    :goto_0
    return v0

    .line 502
    :cond_1
    iget-object v1, p0, Lamr;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 503
    iget-object v3, p0, Lamr;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 507
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic e(Lamr;)Z
    .locals 1

    .prologue
    .line 435
    invoke-direct {p0}, Lamr;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lamr;)V
    .locals 0

    .prologue
    .line 435
    invoke-direct {p0}, Lamr;->c()V

    return-void
.end method


# virtual methods
.method protected a(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 472
    iget-object v0, p0, Lamr;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lamr;->d:Lamh;

    invoke-interface {v0}, Lamh;->i()V

    .line 512
    return-void
.end method

.method public final getItemCount()I
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lamr;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
