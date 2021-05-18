.class public Lnde;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lndf;",
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
            "Lgyv;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lndg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lgyv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 31
    iput-object p1, p0, Lnde;->a:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lnde;->b:Ljava/util/List;

    .line 33
    return-void
.end method

.method static synthetic a(Lnde;)Lndg;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lnde;->c:Lndg;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lndf;
    .locals 3

    .prologue
    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400c7

    const/4 v2, 0x0

    .line 39
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 41
    new-instance v1, Lndf;

    invoke-direct {v1, p0, v0}, Lndf;-><init>(Lnde;Landroid/view/View;)V

    return-object v1
.end method

.method public a(Lndf;I)V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lnde;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgyv;

    invoke-virtual {v0}, Lgyv;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnde;->b:Ljava/util/List;

    .line 47
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgyv;

    invoke-virtual {v0}, Lgyv;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    iget-object v1, p1, Lndf;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lnde;->b:Ljava/util/List;

    .line 51
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgyv;

    invoke-virtual {v0}, Lgyv;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnag;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v0}, Lnai;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public a(Lndg;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lnde;->c:Lndg;

    .line 79
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lnde;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lndf;

    invoke-virtual {p0, p1, p2}, Lnde;->a(Lndf;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Lnde;->a(Landroid/view/ViewGroup;I)Lndf;

    move-result-object v0

    return-object v0
.end method
