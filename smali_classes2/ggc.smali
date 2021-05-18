.class public Lggc;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lgge;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgev;",
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
            "Lgev;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 29
    iput-object p1, p0, Lggc;->a:Ljava/util/List;

    .line 30
    iput-object p2, p0, Lggc;->b:Landroid/view/View$OnClickListener;

    .line 31
    return-void
.end method

.method static synthetic a(Lggc;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lggc;->b:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lgge;
    .locals 3

    .prologue
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400ca

    const/4 v2, 0x0

    .line 37
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 39
    new-instance v1, Lgge;

    invoke-direct {v1, v0}, Lgge;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public a()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lggc;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 85
    invoke-virtual {p0}, Lggc;->notifyDataSetChanged()V

    .line 86
    return-void
.end method

.method public a(Lgge;I)V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lggc;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgev;

    .line 47
    invoke-static {p1}, Lgge;->a(Lgge;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lgev;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    invoke-static {p1}, Lgge;->b(Lgge;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lgev;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {v0}, Lgev;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-static {p1}, Lgge;->c(Lgge;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 53
    iget-object v1, p1, Lgge;->itemView:Landroid/view/View;

    new-instance v2, Lggd;

    invoke-direct {v2, p0, p1, v0}, Lggd;-><init>(Lggc;Lgge;Lgev;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lggc;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lggc;->a:Ljava/util/List;

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
    .line 23
    check-cast p1, Lgge;

    invoke-virtual {p0, p1, p2}, Lggc;->a(Lgge;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, Lggc;->a(Landroid/view/ViewGroup;I)Lgge;

    move-result-object v0

    return-object v0
.end method
