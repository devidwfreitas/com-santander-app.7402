.class public Llko;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Llkr;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Llks;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkqo;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkqq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkqo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lkqq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 33
    iput-object p1, p0, Llko;->c:Ljava/util/List;

    .line 34
    iput-object p2, p0, Llko;->d:Ljava/util/List;

    .line 35
    return-void
.end method

.method static synthetic a(Llko;)Llks;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Llko;->b:Llks;

    return-object v0
.end method

.method static synthetic b(Llko;)Ljava/util/List;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Llko;->d:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Llkr;
    .locals 3

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04013d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Llko;->a:Landroid/view/View;

    .line 40
    new-instance v0, Llkr;

    iget-object v1, p0, Llko;->a:Landroid/view/View;

    invoke-direct {v0, p0, v1}, Llkr;-><init>(Llko;Landroid/view/View;)V

    return-object v0
.end method

.method public a(Llkr;I)V
    .locals 4

    .prologue
    .line 46
    iget-object v0, p0, Llko;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkqo;

    .line 48
    iget-object v1, p0, Llko;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p2, v1, :cond_0

    .line 49
    invoke-static {p1}, Llkr;->a(Llkr;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 53
    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v1, p0, Llko;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 55
    invoke-virtual {v0}, Lkqo;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Llko;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkqq;

    invoke-virtual {v1}, Lkqq;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    invoke-static {p1}, Llkr;->b(Llkr;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v1, p0, Llko;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkqq;

    invoke-virtual {v1}, Lkqq;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-static {p1}, Llkr;->c(Llkr;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v3, Llkp;

    invoke-direct {v3, p0, v2}, Llkp;-><init>(Llko;I)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-static {p1}, Llkr;->b(Llkr;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v3, Llkq;

    invoke-direct {v3, p0, v2}, Llkq;-><init>(Llko;I)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 79
    :cond_2
    invoke-static {p1}, Llkr;->d(Llkr;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lkqo;->l()Lkrk;

    move-result-object v0

    invoke-virtual {v0}, Lkrk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    return-void
.end method

.method public a(Llks;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Llko;->b:Llks;

    .line 116
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Llko;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Llkr;

    invoke-virtual {p0, p1, p2}, Llko;->a(Llkr;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Llko;->a(Landroid/view/ViewGroup;I)Llkr;

    move-result-object v0

    return-object v0
.end method
