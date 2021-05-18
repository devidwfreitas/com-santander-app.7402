.class public Ljkp;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Ljkr;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljdb;",
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
            "Ljdb;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 30
    iput-object p1, p0, Ljkp;->a:Ljava/util/List;

    .line 31
    iput-object p2, p0, Ljkp;->b:Landroid/view/View$OnClickListener;

    .line 32
    return-void
.end method

.method static synthetic a(Ljkp;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Ljkp;->b:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Ljkr;
    .locals 3

    .prologue
    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400d2

    const/4 v2, 0x0

    .line 38
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 40
    new-instance v1, Ljkr;

    invoke-direct {v1, v0}, Ljkr;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public a(Ljkr;I)V
    .locals 4

    .prologue
    .line 46
    iget-object v0, p0, Ljkp;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdb;

    .line 48
    invoke-static {p1}, Ljkr;->a(Ljkr;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Ljdb;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {v0}, Ljdb;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    invoke-static {p1}, Ljkr;->b(Ljkr;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Ljdb;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    :cond_0
    invoke-virtual {v0}, Ljdb;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 52
    invoke-static {p1}, Ljkr;->c(Ljkr;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljdb;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 61
    :cond_1
    invoke-static {p1}, Ljkr;->d(Ljkr;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    iget-object v1, p1, Ljkr;->itemView:Landroid/view/View;

    new-instance v2, Ljkq;

    invoke-direct {v2, p0, p1, v0}, Ljkq;-><init>(Ljkp;Ljkr;Ljdb;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Ljkp;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljkp;->a:Ljava/util/List;

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
    .line 24
    check-cast p1, Ljkr;

    invoke-virtual {p0, p1, p2}, Ljkp;->a(Ljkr;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Ljkp;->a(Landroid/view/ViewGroup;I)Ljkr;

    move-result-object v0

    return-object v0
.end method
