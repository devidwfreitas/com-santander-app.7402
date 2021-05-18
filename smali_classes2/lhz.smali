.class public Llhz;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Llia;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkny;",
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
            "Lkny;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 29
    iput-object p1, p0, Llhz;->a:Ljava/util/List;

    .line 30
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Llia;
    .locals 3

    .prologue
    .line 34
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040355

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 35
    new-instance v1, Llia;

    invoke-direct {v1, p0, v0}, Llia;-><init>(Llhz;Landroid/view/View;)V

    return-object v1
.end method

.method public a(Llia;I)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 40
    iget-object v0, p0, Llhz;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkny;

    .line 42
    invoke-virtual {p0}, Llhz;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 43
    invoke-static {p1}, Llia;->a(Llia;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 44
    invoke-static {p1}, Llia;->b(Llia;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 56
    :goto_0
    invoke-static {p1}, Llia;->c(Llia;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {p1}, Llia;->c(Llia;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e00b9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 58
    invoke-static {p1}, Llia;->d(Llia;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lkny;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmhj;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-static {p1}, Llia;->e(Llia;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lkny;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lmhj;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-static {p1}, Llia;->f(Llia;)Lcom/santander/app/seguros/ui/widgets/CircleImageView;

    move-result-object v0

    const v1, 0x7f020438

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/CircleImageView;->setImageResource(I)V

    .line 61
    return-void

    .line 45
    :cond_0
    if-nez p2, :cond_1

    .line 46
    invoke-static {p1}, Llia;->a(Llia;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 47
    invoke-static {p1}, Llia;->b(Llia;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p0}, Llhz;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p2, v1, :cond_2

    .line 49
    invoke-static {p1}, Llia;->a(Llia;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 50
    invoke-static {p1}, Llia;->b(Llia;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 52
    :cond_2
    invoke-static {p1}, Llia;->a(Llia;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 53
    invoke-static {p1}, Llia;->b(Llia;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Llhz;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Llia;

    invoke-virtual {p0, p1, p2}, Llhz;->a(Llia;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Llhz;->a(Landroid/view/ViewGroup;I)Llia;

    move-result-object v0

    return-object v0
.end method
