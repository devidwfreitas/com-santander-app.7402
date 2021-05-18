.class public Llag;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Llaj;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Llai;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkom;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llag;->b:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Llag;)Llai;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Llag;->a:Llai;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Llaj;
    .locals 3

    .prologue
    .line 34
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0402a6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 35
    new-instance v1, Llaj;

    invoke-direct {v1, v0}, Llaj;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkom;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    iput-object p1, p0, Llag;->b:Ljava/util/List;

    .line 61
    invoke-virtual {p0}, Llag;->notifyDataSetChanged()V

    .line 62
    return-void
.end method

.method public a(Llai;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Llag;->a:Llai;

    .line 79
    return-void
.end method

.method public a(Llaj;I)V
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Llag;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkom;

    .line 42
    invoke-static {p1}, Llaj;->a(Llaj;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lkom;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-static {p1}, Llaj;->b(Llaj;)Landroid/widget/ImageButton;

    move-result-object v1

    new-instance v2, Llah;

    invoke-direct {v2, p0, v0}, Llah;-><init>(Llag;Lkom;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Llag;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Llaj;

    invoke-virtual {p0, p1, p2}, Llag;->a(Llaj;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, Llag;->a(Landroid/view/ViewGroup;I)Llaj;

    move-result-object v0

    return-object v0
.end method
