.class public Lllq;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lllt;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lksd;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Lllu;


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lksd;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 36
    iput-object p1, p0, Lllq;->a:Ljava/util/List;

    .line 37
    iput-boolean p2, p0, Lllq;->b:Z

    .line 38
    return-void
.end method

.method static synthetic a(Lllq;)Lllu;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lllq;->c:Lllu;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lllt;
    .locals 3

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04036e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 49
    new-instance v1, Lllt;

    invoke-direct {v1, p0, v0}, Lllt;-><init>(Lllq;Landroid/view/View;)V

    return-object v1
.end method

.method public a(Lllt;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 54
    invoke-static {p1}, Lllt;->a(Lllt;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    invoke-virtual {p1}, Lllt;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p0}, Lllq;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 56
    invoke-static {p1}, Lllt;->b(Lllt;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    :goto_0
    invoke-virtual {p1}, Lllt;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lllq;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_1

    .line 62
    invoke-static {p1}, Lllt;->c(Lllt;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 63
    invoke-static {p1}, Lllt;->d(Lllt;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p1, Lllt;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090548

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-static {p1}, Lllt;->a(Lllt;)Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v1, Lllr;

    invoke-direct {v1, p0}, Lllr;-><init>(Lllq;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    :goto_1
    return-void

    .line 58
    :cond_0
    invoke-static {p1}, Lllt;->b(Lllt;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 73
    :cond_1
    iget-object v0, p0, Lllq;->a:Ljava/util/List;

    invoke-virtual {p1}, Lllt;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lksd;

    .line 74
    invoke-static {p1}, Lllt;->a(Lllt;)Landroid/widget/FrameLayout;

    move-result-object v1

    new-instance v2, Llls;

    invoke-direct {v2, p0, v0}, Llls;-><init>(Lllq;Lksd;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    invoke-virtual {v0}, Lksd;->a()Lksc;

    move-result-object v1

    invoke-virtual {v1}, Lksc;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmgi;->b(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 84
    invoke-static {p1}, Lllt;->c(Lllt;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020499

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    :goto_2
    invoke-static {p1}, Lllt;->d(Lllt;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lksd;->a()Lksc;

    move-result-object v0

    invoke-virtual {v0}, Lksc;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 86
    :cond_2
    invoke-virtual {v0}, Lksd;->a()Lksc;

    move-result-object v1

    invoke-virtual {v1}, Lksc;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmgi;->b(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 87
    invoke-static {p1}, Lllt;->c(Lllt;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f02040c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 90
    :cond_3
    invoke-static {p1}, Lllt;->c(Lllt;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method

.method public a(Lllu;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lllq;->c:Lllu;

    .line 44
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lllq;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lllq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lllq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Lllt;

    invoke-virtual {p0, p1, p2}, Lllq;->a(Lllt;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lllq;->a(Landroid/view/ViewGroup;I)Lllt;

    move-result-object v0

    return-object v0
.end method
