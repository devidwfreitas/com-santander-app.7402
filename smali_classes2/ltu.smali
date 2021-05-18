.class public Lltu;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lltx;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkux;",
            ">;"
        }
    .end annotation
.end field

.field private b:Llty;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lltu;->a:Ljava/util/List;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkux;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 29
    iput-object p1, p0, Lltu;->a:Ljava/util/List;

    .line 30
    return-void
.end method

.method static synthetic a(Lltu;)Llty;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lltu;->b:Llty;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lltx;
    .locals 3

    .prologue
    .line 38
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0401c1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 39
    new-instance v1, Lltx;

    invoke-direct {v1, p0, v0}, Lltx;-><init>(Lltu;Landroid/view/View;)V

    return-object v1
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lltu;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 99
    invoke-virtual {p0}, Lltu;->notifyDataSetChanged()V

    .line 100
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkux;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    iput-object p1, p0, Lltu;->a:Ljava/util/List;

    .line 104
    invoke-virtual {p0}, Lltu;->notifyDataSetChanged()V

    .line 105
    return-void
.end method

.method public a(Lkux;)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lltu;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-virtual {p0}, Lltu;->notifyDataSetChanged()V

    .line 95
    return-void
.end method

.method public a(Lkux;I)V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lltu;->a:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-virtual {p0}, Lltu;->notifyDataSetChanged()V

    .line 114
    return-void
.end method

.method public a(Lltx;I)V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lltu;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkux;

    .line 45
    invoke-static {p1}, Lltx;->a(Lltx;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lkux;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-static {p1}, Lltx;->b(Lltx;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lltv;

    invoke-direct {v1, p0, p2}, Lltv;-><init>(Lltu;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    invoke-static {p1}, Lltx;->a(Lltx;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lltw;

    invoke-direct {v1, p0, p2}, Lltw;-><init>(Lltu;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    return-void
.end method

.method public a(Llty;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lltu;->b:Llty;

    .line 109
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lltu;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lltu;->a:Ljava/util/List;

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
    check-cast p1, Lltx;

    invoke-virtual {p0, p1, p2}, Lltu;->a(Lltx;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, Lltu;->a(Landroid/view/ViewGroup;I)Lltx;

    move-result-object v0

    return-object v0
.end method
