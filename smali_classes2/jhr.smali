.class public Ljhr;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Ljhs;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljdy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljdy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 26
    iput-object p1, p0, Ljhr;->a:Ljava/util/List;

    .line 27
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Ljhs;
    .locals 3

    .prologue
    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400d0

    const/4 v2, 0x0

    .line 33
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 34
    new-instance v1, Ljhs;

    invoke-direct {v1, v0}, Ljhs;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public a(Ljhs;I)V
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Ljhr;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdy;

    .line 42
    invoke-static {p1}, Ljhs;->a(Ljhs;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Ljdy;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    invoke-static {p1}, Ljhs;->b(Ljhs;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Ljdy;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Ljhr;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Ljhs;

    invoke-virtual {p0, p1, p2}, Ljhr;->a(Ljhs;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2}, Ljhr;->a(Landroid/view/ViewGroup;I)Ljhs;

    move-result-object v0

    return-object v0
.end method
