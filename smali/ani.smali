.class public Lani;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lanj;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbr/com/santander/uisdk/error/SantanderErrorItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lani;->a:Ljava/util/List;

    .line 21
    return-void
.end method

.method static synthetic a(Lani;)Ljava/util/List;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lani;->a:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lanj;
    .locals 3

    .prologue
    .line 35
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 36
    sget v1, Lalu;->santander_adapter_error_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 37
    new-instance v1, Lanj;

    invoke-direct {v1, p0, v0}, Lanj;-><init>(Lani;Landroid/view/View;)V

    return-object v1
.end method

.method public a(Lanj;I)V
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lani;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbr/com/santander/uisdk/error/SantanderErrorItem;

    .line 43
    invoke-static {p1}, Lanj;->a(Lanj;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0}, Lbr/com/santander/uisdk/error/SantanderErrorItem;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 44
    invoke-static {p1}, Lanj;->b(Lanj;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lbr/com/santander/uisdk/error/SantanderErrorItem;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    invoke-static {p1}, Lanj;->c(Lanj;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lbr/com/santander/uisdk/error/SantanderErrorItem;->b()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    return-void
.end method

.method a(Lbr/com/santander/uisdk/error/SantanderErrorItem;)V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lani;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-virtual {p0}, Lani;->notifyDataSetChanged()V

    .line 31
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbr/com/santander/uisdk/error/SantanderErrorItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    iput-object p1, p0, Lani;->a:Ljava/util/List;

    .line 25
    invoke-virtual {p0}, Lani;->notifyDataSetChanged()V

    .line 26
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lani;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Lanj;

    invoke-virtual {p0, p1, p2}, Lani;->a(Lanj;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2}, Lani;->a(Landroid/view/ViewGroup;I)Lanj;

    move-result-object v0

    return-object v0
.end method
