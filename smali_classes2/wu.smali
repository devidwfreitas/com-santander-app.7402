.class public Lwu;
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
    .line 32
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lwu;->a:Ljava/util/List;

    .line 33
    iget-object v0, p0, Lwu;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 34
    iput-object p2, p0, Lwu;->c:Lacg;

    .line 35
    iput-object p3, p0, Lwu;->b:Landroid/content/Context;

    .line 36
    return-void
.end method

.method static synthetic a(Lwu;)Lacg;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lwu;->c:Lacg;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lwu;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .prologue
    .line 65
    move-object v0, p1

    check-cast v0, Lww;

    iget-object v1, v0, Lww;->a:Landroid/view/View;

    iget-object v0, p0, Lwu;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsy;

    invoke-virtual {v0}, Lsy;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    move-object v0, p1

    .line 66
    check-cast v0, Lww;

    iget-object v1, v0, Lww;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lwu;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsy;

    invoke-virtual {v0}, Lsy;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, p1

    .line 67
    check-cast v0, Lww;

    iget-object v1, v0, Lww;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lwu;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsy;

    invoke-virtual {v0}, Lsy;->i()Lsw;

    move-result-object v0

    invoke-virtual {v0}, Lsw;->a()Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Laat;->b(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    check-cast p1, Lww;

    iget-object v0, p1, Lww;->f:Landroid/support/v7/widget/CardView;

    new-instance v1, Lwv;

    invoke-direct {v1, p0, p2}, Lwv;-><init>(Lwu;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    .prologue
    .line 60
    new-instance v0, Lww;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Llc;->layout_card_resgate_familia:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lww;-><init>(Landroid/view/View;)V

    return-object v0
.end method
