.class public Lgcz;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lgdb;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgbb;",
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
            "Lgbb;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 28
    iput-object p1, p0, Lgcz;->a:Ljava/util/List;

    .line 29
    iput-object p2, p0, Lgcz;->b:Landroid/view/View$OnClickListener;

    .line 30
    return-void
.end method

.method static synthetic a(Lgcz;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lgcz;->b:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lgdb;
    .locals 3

    .prologue
    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400d3

    const/4 v2, 0x0

    .line 36
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 38
    new-instance v1, Lgdb;

    invoke-direct {v1, v0}, Lgdb;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public a(Lgdb;I)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 44
    iget-object v0, p0, Lgcz;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgbb;

    .line 45
    iget-object v1, p1, Lgdb;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lgbb;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v1, p1, Lgdb;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lgbb;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    invoke-virtual {v0}, Lgbb;->e()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 49
    iget-object v1, p1, Lgdb;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 51
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_1

    .line 52
    iget-object v1, p1, Lgdb;->c:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 54
    :cond_1
    iget-object v1, p1, Lgdb;->itemView:Landroid/view/View;

    new-instance v2, Lgda;

    invoke-direct {v2, p0, p1, v0}, Lgda;-><init>(Lgcz;Lgdb;Lgbb;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lgcz;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Lgdb;

    invoke-virtual {p0, p1, p2}, Lgcz;->a(Lgdb;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, Lgcz;->a(Landroid/view/ViewGroup;I)Lgdb;

    move-result-object v0

    return-object v0
.end method
