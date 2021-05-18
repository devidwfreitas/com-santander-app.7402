.class public Ljif;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Ljih;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljdw;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/view/View$OnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljdw;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 29
    iput-object p1, p0, Ljif;->a:Ljava/util/List;

    .line 30
    iput-object p2, p0, Ljif;->b:Landroid/view/View$OnClickListener;

    .line 31
    return-void
.end method

.method static synthetic a(Ljif;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Ljif;->b:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Ljih;
    .locals 3

    .prologue
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400cf

    const/4 v2, 0x0

    .line 37
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 39
    new-instance v1, Ljih;

    invoke-direct {v1, v0}, Ljih;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public a(Ljih;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 45
    iget-object v0, p0, Ljif;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdw;

    .line 47
    invoke-static {p1}, Ljih;->a(Ljih;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Ljdw;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {v0}, Ljdw;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    invoke-static {p1}, Ljih;->b(Ljih;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    invoke-static {p1}, Ljih;->a(Ljih;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 58
    :goto_0
    iget-object v1, p1, Ljih;->itemView:Landroid/view/View;

    new-instance v2, Ljig;

    invoke-direct {v2, p0, p1, v0}, Ljig;-><init>(Ljif;Ljih;Ljdw;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    return-void

    .line 54
    :cond_0
    invoke-static {p1}, Ljih;->b(Ljih;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    invoke-static {p1}, Ljih;->a(Ljih;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Ljif;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Ljih;

    invoke-virtual {p0, p1, p2}, Ljif;->a(Ljih;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, Ljif;->a(Landroid/view/ViewGroup;I)Ljih;

    move-result-object v0

    return-object v0
.end method
