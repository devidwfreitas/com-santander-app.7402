.class public Lhnw;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lhny;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lhnx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhnw;->a:Ljava/util/List;

    .line 25
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lhny;
    .locals 3

    .prologue
    .line 29
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400db

    const/4 v2, 0x0

    .line 30
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 31
    new-instance v1, Lhny;

    invoke-direct {v1, v0}, Lhny;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public a(Lhny;I)V
    .locals 5

    .prologue
    const v2, 0x7f0203ac

    const v3, 0x7f0203ab

    .line 36
    iget-object v0, p0, Lhnw;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhnx;

    .line 37
    iget-object v1, p1, Lhny;->a:Landroid/widget/TextView;

    iget-object v4, v0, Lhnx;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v4, p1, Lhny;->b:Landroid/widget/ImageView;

    iget-boolean v1, v0, Lhnx;->b:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 40
    iget-object v1, p1, Lhny;->c:Landroid/widget/ImageView;

    iget-boolean v0, v0, Lhnx;->c:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 42
    return-void

    :cond_0
    move v1, v3

    .line 38
    goto :goto_0

    :cond_1
    move v2, v3

    .line 40
    goto :goto_1
.end method

.method public a(Ljava/lang/String;ZZ)V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lhnx;

    invoke-direct {v0, p1, p2, p3}, Lhnx;-><init>(Ljava/lang/String;ZZ)V

    .line 51
    iget-object v1, p0, Lhnw;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-virtual {p0}, Lhnw;->notifyDataSetChanged()V

    .line 53
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lhnw;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Lhny;

    invoke-virtual {p0, p1, p2}, Lhnw;->a(Lhny;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2}, Lhnw;->a(Landroid/view/ViewGroup;I)Lhny;

    move-result-object v0

    return-object v0
.end method
