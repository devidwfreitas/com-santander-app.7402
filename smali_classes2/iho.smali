.class public Liho;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lihq;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ligl;",
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
            "Ligl;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 28
    iput-object p1, p0, Liho;->a:Ljava/util/List;

    .line 29
    iput-object p2, p0, Liho;->b:Landroid/view/View$OnClickListener;

    .line 30
    return-void
.end method

.method static synthetic a(Liho;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Liho;->b:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lihq;
    .locals 3

    .prologue
    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400d7

    const/4 v2, 0x0

    .line 36
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 38
    new-instance v1, Lihq;

    invoke-direct {v1, v0}, Lihq;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public a(Lihq;I)V
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Liho;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ligl;

    .line 46
    iget-object v1, p1, Lihq;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Ligl;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v1, p1, Lihq;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Ligl;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v1, p1, Lihq;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Ligl;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v1, p1, Lihq;->itemView:Landroid/view/View;

    new-instance v2, Lihp;

    invoke-direct {v2, p0, p1, v0}, Lihp;-><init>(Liho;Lihq;Ligl;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Liho;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lihq;

    invoke-virtual {p0, p1, p2}, Liho;->a(Lihq;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2}, Liho;->a(Landroid/view/ViewGroup;I)Lihq;

    move-result-object v0

    return-object v0
.end method
