.class public Ljht;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Ljhv;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljdz;",
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
            "Ljdz;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 29
    iput-object p1, p0, Ljht;->a:Ljava/util/List;

    .line 30
    iput-object p2, p0, Ljht;->b:Landroid/view/View$OnClickListener;

    .line 31
    return-void
.end method

.method static synthetic a(Ljht;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Ljht;->b:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Ljhv;
    .locals 3

    .prologue
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400d1

    const/4 v2, 0x0

    .line 37
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 38
    new-instance v1, Ljhv;

    invoke-direct {v1, v0}, Ljhv;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public a(Ljhv;I)V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Ljht;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdz;

    .line 46
    invoke-static {p1}, Ljhv;->a(Ljhv;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Ljdz;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    invoke-static {p1}, Ljhv;->b(Ljhv;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Ljdz;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {v0}, Ljdz;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 50
    invoke-static {p1}, Ljhv;->c(Ljhv;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    :cond_0
    invoke-static {p1}, Ljhv;->c(Ljhv;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Ljhu;

    invoke-direct {v2, p0, p1, v0}, Ljhu;-><init>(Ljht;Ljhv;Ljdz;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Ljht;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Ljhv;

    invoke-virtual {p0, p1, p2}, Ljht;->a(Ljhv;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, Ljht;->a(Landroid/view/ViewGroup;I)Ljhv;

    move-result-object v0

    return-object v0
.end method
