.class public Laco;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lacq;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lou;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lacy;

.field private c:Lacg;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lacy;Lacg;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lou;",
            ">;",
            "Lacy;",
            "Lacg;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 31
    iput-object p1, p0, Laco;->a:Ljava/util/ArrayList;

    .line 32
    iput-object p2, p0, Laco;->b:Lacy;

    .line 33
    iput-object p3, p0, Laco;->c:Lacg;

    .line 34
    return-void
.end method

.method static synthetic a(Laco;)Lacg;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Laco;->c:Lacg;

    return-object v0
.end method

.method static synthetic b(Laco;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Laco;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Laco;)Lacy;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Laco;->b:Lacy;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lacq;
    .locals 3

    .prologue
    .line 38
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 39
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 40
    sget v1, Llc;->layout_item_carteira:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 41
    new-instance v1, Lacq;

    invoke-direct {v1, v0}, Lacq;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public a(Lacq;I)V
    .locals 3

    .prologue
    .line 47
    iget-object v1, p1, Lacq;->b:Landroid/widget/TextView;

    iget-object v0, p0, Laco;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lou;

    invoke-virtual {v0}, Lou;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laat;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v1, p1, Lacq;->c:Landroid/widget/TextView;

    iget-object v0, p0, Laco;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lou;

    invoke-virtual {v0}, Lou;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laat;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v1, p1, Lacq;->a:Landroid/widget/TextView;

    iget-object v0, p0, Laco;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lou;

    invoke-virtual {v0}, Lou;->m()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Laco;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lou;

    invoke-virtual {v0}, Lou;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Laat;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, p1, Lacq;->d:Landroid/widget/RelativeLayout;

    new-instance v1, Lacp;

    invoke-direct {v1, p0, p2}, Lacp;-><init>(Laco;I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Laco;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lacq;

    invoke-virtual {p0, p1, p2}, Laco;->a(Lacq;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Laco;->a(Landroid/view/ViewGroup;I)Lacq;

    move-result-object v0

    return-object v0
.end method
