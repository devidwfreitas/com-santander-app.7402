.class public Lihr;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Liht;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ligj;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/view/View$OnClickListener;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ligj;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 30
    iput-object p1, p0, Lihr;->b:Ljava/util/List;

    .line 31
    iput-object p2, p0, Lihr;->c:Landroid/view/View$OnClickListener;

    .line 32
    iput-object p3, p0, Lihr;->a:Landroid/content/Context;

    .line 33
    return-void
.end method

.method static synthetic a(Lihr;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lihr;->c:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Liht;
    .locals 3

    .prologue
    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400c3

    const/4 v2, 0x0

    .line 39
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 41
    new-instance v1, Liht;

    invoke-direct {v1, v0}, Liht;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public a(Liht;I)V
    .locals 4

    .prologue
    .line 47
    iget-object v0, p0, Lihr;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ligj;

    .line 49
    iget-object v1, p1, Liht;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Ligj;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-virtual {v0}, Ligj;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p1, Liht;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Lihr;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0205e2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ligj;->a(Z)V

    .line 58
    :goto_0
    iget-object v1, p1, Liht;->itemView:Landroid/view/View;

    new-instance v2, Lihs;

    invoke-direct {v2, p0, v0, p1}, Lihs;-><init>(Lihr;Ligj;Liht;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    return-void

    .line 56
    :cond_0
    iget-object v1, p1, Liht;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Lihr;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0205e7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lihr;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Liht;

    invoke-virtual {p0, p1, p2}, Lihr;->a(Liht;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, Lihr;->a(Landroid/view/ViewGroup;I)Liht;

    move-result-object v0

    return-object v0
.end method
