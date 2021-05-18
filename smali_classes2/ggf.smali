.class public Lggf;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lggg;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgev;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgev;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 31
    iput-object p1, p0, Lggf;->a:Ljava/util/List;

    .line 32
    iput-object p2, p0, Lggf;->b:Landroid/app/Activity;

    .line 33
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lggg;
    .locals 3

    .prologue
    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400cc

    const/4 v2, 0x0

    .line 39
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 40
    new-instance v1, Lggg;

    invoke-direct {v1, v0}, Lggg;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public a(Lggg;I)V
    .locals 4

    .prologue
    .line 45
    iget-object v0, p0, Lggf;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgev;

    .line 46
    invoke-virtual {v0}, Lgev;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    invoke-static {p1}, Lggg;->a(Lggg;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lggf;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e00a3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    :cond_0
    invoke-static {p1}, Lggg;->a(Lggg;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lgev;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-static {p1}, Lggg;->b(Lggg;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lgev;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lggf;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lggf;->a:Ljava/util/List;

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
    .line 25
    check-cast p1, Lggg;

    invoke-virtual {p0, p1, p2}, Lggf;->a(Lggg;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lggf;->a(Landroid/view/ViewGroup;I)Lggg;

    move-result-object v0

    return-object v0
.end method
