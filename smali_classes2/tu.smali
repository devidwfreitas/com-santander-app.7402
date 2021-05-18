.class public Ltu;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsy;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroid/content/Context;

.field private c:Lacg;


# direct methods
.method public constructor <init>(Ljava/util/List;Lacg;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsy;",
            ">;",
            "Lacg;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltu;->a:Ljava/util/List;

    .line 74
    iget-object v0, p0, Ltu;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 75
    iput-object p2, p0, Ltu;->c:Lacg;

    .line 76
    iput-object p3, p0, Ltu;->b:Landroid/content/Context;

    .line 77
    return-void
.end method

.method private a(Lsy;)Ljava/lang/String;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 86
    invoke-virtual {p1}, Lsy;->e()Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Laat;->c(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-virtual {p1}, Lsy;->e()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v1, v2, v4

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lsy;->i()Lsw;

    move-result-object v1

    invoke-virtual {v1}, Lsw;->b()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    .line 88
    const-string v0, "<0,01%"

    .line 90
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Ltz;
    .locals 4

    .prologue
    .line 81
    new-instance v0, Ltz;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Llc;->layout_card_familia:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Ltz;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Ltu;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    .prologue
    .line 97
    move-object v0, p1

    check-cast v0, Ltz;

    iget-object v1, v0, Ltz;->c:Landroid/view/View;

    iget-object v0, p0, Ltu;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsy;

    invoke-virtual {v0}, Lsy;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    move-object v0, p1

    .line 98
    check-cast v0, Ltz;

    iget-object v1, v0, Ltz;->d:Landroid/widget/TextView;

    iget-object v0, p0, Ltu;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsy;

    invoke-virtual {v0}, Lsy;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, p1

    .line 99
    check-cast v0, Ltz;

    iget-object v1, v0, Ltz;->e:Landroid/widget/TextView;

    iget-object v0, p0, Ltu;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsy;

    invoke-direct {p0, v0}, Ltu;->a(Lsy;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, p1

    .line 100
    check-cast v0, Ltz;

    iget-object v1, v0, Ltz;->f:Landroid/widget/TextView;

    iget-object v0, p0, Ltu;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsy;

    invoke-virtual {v0}, Lsy;->i()Lsw;

    move-result-object v0

    invoke-virtual {v0}, Lsw;->b()Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Laat;->b(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, p1

    .line 101
    check-cast v0, Ltz;

    iget-object v0, v0, Ltz;->l:Landroid/widget/ImageView;

    new-instance v1, Ltv;

    invoke-direct {v1, p0, p2, p1}, Ltv;-><init>(Ltu;ILandroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, p1

    .line 106
    check-cast v0, Ltz;

    iget-object v0, v0, Ltz;->i:Landroid/widget/TextView;

    new-instance v1, Ltw;

    invoke-direct {v1, p0, p1, p2}, Ltw;-><init>(Ltu;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, p1

    .line 130
    check-cast v0, Ltz;

    iget-object v0, v0, Ltz;->h:Landroid/widget/ImageButton;

    new-instance v1, Ltx;

    invoke-direct {v1, p0, p1}, Ltx;-><init>(Ltu;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, p1

    .line 147
    check-cast v0, Ltz;

    iget-object v0, v0, Ltz;->g:Landroid/widget/ImageButton;

    new-instance v1, Lty;

    invoke-direct {v1, p0, p1}, Lty;-><init>(Ltu;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, p0, Ltu;->b:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    move-object v0, p1

    .line 165
    check-cast v0, Ltz;

    iget-object v0, v0, Ltz;->j:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    move-object v0, p1

    .line 166
    check-cast v0, Ltz;

    iget-object v0, v0, Ltz;->j:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 168
    iget-object v0, p0, Ltu;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsy;

    invoke-virtual {v0}, Lsy;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 169
    iget-object v0, p0, Ltu;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsy;

    invoke-virtual {v0}, Lsy;->b()Ljava/lang/String;

    move-result-object v3

    .line 170
    iget-object v0, p0, Ltu;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsy;

    invoke-virtual {v0}, Lsy;->a()Ljava/lang/String;

    move-result-object v5

    .line 172
    new-instance v0, Lub;

    iget-object v1, p0, Ltu;->b:Landroid/content/Context;

    iget-object v2, p0, Ltu;->a:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsy;

    invoke-virtual {v2}, Lsy;->h()Ljava/util/List;

    move-result-object v2

    iget-object v6, p0, Ltu;->c:Lacg;

    invoke-direct/range {v0 .. v6}, Lub;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lacg;)V

    .line 174
    check-cast p1, Ltz;

    iget-object v1, p1, Ltz;->j:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 176
    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Ltu;->a(Landroid/view/ViewGroup;I)Ltz;

    move-result-object v0

    return-object v0
.end method
