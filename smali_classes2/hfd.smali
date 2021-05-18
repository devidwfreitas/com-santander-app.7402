.class public Lhfd;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lhfe;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lhga;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhfd;->a:Ljava/util/List;

    .line 31
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lhfe;
    .locals 3

    .prologue
    .line 35
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400ba

    const/4 v2, 0x0

    .line 36
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 37
    new-instance v1, Lhfe;

    invoke-direct {v1, v0}, Lhfe;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public a(Lhfe;I)V
    .locals 2

    .prologue
    .line 42
    if-nez p2, :cond_0

    .line 43
    const-string v0, "N\u00famero do contrato"

    const-string v1, "Valor"

    invoke-virtual {p1, v0, v1}, Lhfe;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lhfd;->a:Ljava/util/List;

    add-int/lit8 v1, p2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhga;

    .line 46
    invoke-virtual {p1, v0}, Lhfe;->a(Lhga;)V

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lhga;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lhfd;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 57
    iget-object v0, p0, Lhfd;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 58
    invoke-virtual {p0}, Lhfd;->notifyDataSetChanged()V

    .line 59
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lhfd;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Lhfe;

    invoke-virtual {p0, p1, p2}, Lhfd;->a(Lhfe;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lhfd;->a(Landroid/view/ViewGroup;I)Lhfe;

    move-result-object v0

    return-object v0
.end method
