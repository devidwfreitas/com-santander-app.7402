.class public Lql;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lqm;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lqk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lqk;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lql;->b:Ljava/util/List;

    .line 22
    iput-object p1, p0, Lql;->a:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lql;->b:Ljava/util/List;

    .line 24
    return-void
.end method

.method private a(I)Lqk;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lql;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lql;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqk;

    .line 66
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lqm;
    .locals 4

    .prologue
    .line 28
    new-instance v0, Lqm;

    .line 29
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Llc;->recyclerview_configurar_investimentos_row:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lqm;-><init>(Landroid/view/View;)V

    .line 28
    return-object v0
.end method

.method public a(Lqm;I)V
    .locals 3

    .prologue
    .line 36
    invoke-direct {p0, p2}, Lql;->a(I)Lqk;

    move-result-object v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p1}, Lqm;->c()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lqk;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual {p1}, Lqm;->b()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lqk;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    invoke-virtual {p1}, Lqm;->a()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0}, Lqk;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    invoke-virtual {v0}, Lqk;->d()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 43
    invoke-virtual {p1}, Lqm;->d()Landroid/support/v7/widget/CardView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setClickable(Z)V

    .line 44
    invoke-virtual {p1}, Lqm;->b()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lql;->a:Landroid/content/Context;

    sget v2, Lkx;->inv_warm_grey_two:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    invoke-virtual {p1}, Lqm;->c()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lql;->a:Landroid/content/Context;

    sget v2, Lkx;->inv_warm_grey_two:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    invoke-virtual {p1}, Lqm;->e()Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    invoke-virtual {p1}, Lqm;->d()Landroid/support/v7/widget/CardView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/CardView;->setClickable(Z)V

    .line 49
    invoke-virtual {p1}, Lqm;->d()Landroid/support/v7/widget/CardView;

    move-result-object v1

    invoke-virtual {v0}, Lqk;->c()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lql;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 16
    check-cast p1, Lqm;

    invoke-virtual {p0, p1, p2}, Lql;->a(Lqm;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2}, Lql;->a(Landroid/view/ViewGroup;I)Lqm;

    move-result-object v0

    return-object v0
.end method
