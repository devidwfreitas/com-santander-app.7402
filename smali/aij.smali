.class public Laij;
.super Landroid/support/v7/widget/RecyclerView$Adapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Laik;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/app/Activity;

.field private c:Lajv;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lajw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lajv;Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Laij;->c:Lajv;

    iput-object p2, p0, Laij;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Lajv;->j()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Laij;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Laik;
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lagi;->remanejamento_list_item_ajuste_manual:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Laij;->a:Landroid/content/Context;

    new-instance v1, Laik;

    invoke-direct {v1, p0, v0}, Laik;-><init>(Laij;Landroid/view/View;)V

    return-object v1
.end method

.method public a(Laik;I)V
    .locals 1

    iget-object v0, p0, Laij;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Laij;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Laik;

    invoke-virtual {p0, p1, p2}, Laij;->a(Laik;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Laij;->a(Landroid/view/ViewGroup;I)Laik;

    move-result-object v0

    return-object v0
.end method
