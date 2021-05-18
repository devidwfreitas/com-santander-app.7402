.class public Lhff;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lhfh;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lhgb;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lhfg;

.field private c:I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lhgb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    const v0, 0x7f0400bb

    invoke-direct {p0, p1, v0}, Lhff;-><init>(Ljava/util/List;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/util/List;I)V
    .locals 0
    .param p2    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lhgb;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 36
    iput-object p1, p0, Lhff;->a:Ljava/util/List;

    .line 37
    iput p2, p0, Lhff;->c:I

    .line 38
    return-void
.end method

.method static synthetic a(Lhff;)Lhfg;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lhff;->b:Lhfg;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lhfh;
    .locals 3

    .prologue
    .line 42
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lhff;->c:I

    const/4 v2, 0x0

    .line 43
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 44
    new-instance v1, Lhfh;

    invoke-direct {v1, p0, v0}, Lhfh;-><init>(Lhff;Landroid/view/View;)V

    return-object v1
.end method

.method public a(Lhfg;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lhff;->b:Lhfg;

    .line 60
    return-void
.end method

.method public a(Lhfh;I)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lhff;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhgb;

    .line 50
    invoke-virtual {p1, v0}, Lhfh;->a(Lhgb;)V

    .line 51
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lhff;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhff;->a:Ljava/util/List;

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
    check-cast p1, Lhfh;

    invoke-virtual {p0, p1, p2}, Lhff;->a(Lhfh;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Lhff;->a(Landroid/view/ViewGroup;I)Lhfh;

    move-result-object v0

    return-object v0
.end method
