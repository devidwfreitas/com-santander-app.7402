.class public Laix;
.super Lakb;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lajw;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lajw;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/support/v7/widget/RecyclerView;

.field private e:Landroid/support/v7/widget/RecyclerView$LayoutManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lajw;)V
    .locals 1

    invoke-direct {p0, p1}, Lakb;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Laix;->a:Landroid/app/Activity;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laix;->c:Ljava/util/List;

    iget-object v0, p0, Laix;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lajw;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lakb;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Laix;->a:Landroid/app/Activity;

    iput-object p2, p0, Laix;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-virtual {p0}, Laix;->d()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lagg;->header_titulo:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lagl;->revisao_header:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Laix;->a:Landroid/app/Activity;

    sget v1, Lagg;->revisao_list:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Laix;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Laix;->d:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Laix;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Laix;->e:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v0, p0, Laix;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Laix;->e:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Laiv;

    invoke-direct {v0}, Laiv;-><init>()V

    iget-object v1, p0, Laix;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method
