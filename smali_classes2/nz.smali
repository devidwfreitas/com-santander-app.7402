.class public Lnz;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Loa;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Labz;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Labz;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 23
    iput-object p1, p0, Lnz;->a:Ljava/util/List;

    .line 24
    iput-object p2, p0, Lnz;->b:Landroid/content/Context;

    .line 25
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Loa;
    .locals 4

    .prologue
    .line 29
    new-instance v0, Loa;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Llc;->layout_notas_gurpos:I

    const/4 v3, 0x0

    .line 30
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Loa;-><init>(Lnz;Landroid/view/View;)V

    .line 29
    return-object v0
.end method

.method public a(Loa;I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 36
    iget-object v0, p0, Lnz;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labz;

    invoke-virtual {v0}, Labz;->g()Ljava/lang/String;

    move-result-object v0

    .line 38
    iget-object v2, p1, Loa;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v2, p1, Loa;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 40
    iget-object v0, p1, Loa;->b:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, p0, Lnz;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 41
    iget-object v2, p1, Loa;->b:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Lob;

    iget-object v0, p0, Lnz;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labz;

    invoke-virtual {v0}, Labz;->d()Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Lob;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 42
    iget-object v0, p1, Loa;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 44
    return-void

    :cond_0
    move v0, v1

    .line 39
    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lnz;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 16
    check-cast p1, Loa;

    invoke-virtual {p0, p1, p2}, Lnz;->a(Loa;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2}, Lnz;->a(Landroid/view/ViewGroup;I)Loa;

    move-result-object v0

    return-object v0
.end method
