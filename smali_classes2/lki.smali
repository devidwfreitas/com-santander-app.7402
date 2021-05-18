.class public Llki;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Llkk;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkpw;",
            ">;"
        }
    .end annotation
.end field

.field private b:Llkl;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkpw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 39
    iput-object p1, p0, Llki;->a:Ljava/util/List;

    .line 40
    return-void
.end method

.method static synthetic a(Llki;)Llkl;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Llki;->b:Llkl;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Llkk;
    .locals 3

    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04035f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 67
    new-instance v1, Llkk;

    invoke-direct {v1, p0, v0}, Llkk;-><init>(Llki;Landroid/view/View;)V

    return-object v1
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Llki;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 61
    invoke-virtual {p0}, Llki;->notifyDataSetChanged()V

    .line 62
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkpw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    iput-object p1, p0, Llki;->a:Ljava/util/List;

    .line 55
    invoke-virtual {p0}, Llki;->notifyDataSetChanged()V

    .line 56
    return-void
.end method

.method public a(Lkpw;)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Llki;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, p0, Llki;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Llki;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Llki;->notifyItemInserted(I)V

    .line 46
    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lkpw;I)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Llki;->a:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-virtual {p0, p2}, Llki;->notifyItemChanged(I)V

    .line 51
    return-void
.end method

.method public a(Llkk;I)V
    .locals 6

    .prologue
    .line 72
    iget-object v0, p0, Llki;->a:Ljava/util/List;

    invoke-virtual {p1}, Llkk;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkpw;

    .line 73
    invoke-static {p1}, Llkk;->a(Llkk;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lkpw;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-static {p1}, Llkk;->b(Llkk;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "%s%%"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lkpw;->d()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    invoke-static {p1}, Llkk;->c(Llkk;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lkpw;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-static {p1}, Llkk;->d(Llkk;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lkpw;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-static {p1}, Llkk;->e(Llkk;)Landroid/support/v7/widget/CardView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    invoke-static {p1}, Llkk;->e(Llkk;)Landroid/support/v7/widget/CardView;

    move-result-object v0

    new-instance v1, Llkj;

    invoke-direct {v1, p0, p1}, Llkj;-><init>(Llki;Llkk;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-void
.end method

.method public a(Llkl;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Llki;->b:Llkl;

    .line 36
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Llki;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llki;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Llkk;

    invoke-virtual {p0, p1, p2}, Llki;->a(Llkk;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Llki;->a(Landroid/view/ViewGroup;I)Llkk;

    move-result-object v0

    return-object v0
.end method
