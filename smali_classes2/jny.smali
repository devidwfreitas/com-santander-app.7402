.class Ljny;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 3

    .prologue
    .line 83
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400d9

    const/4 v2, 0x0

    .line 84
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 83
    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 85
    iget-object v0, p0, Ljny;->itemView:Landroid/view/View;

    const v1, 0x7f1004b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ljny;->a:Landroid/widget/ImageView;

    .line 86
    return-void
.end method

.method static synthetic a(Ljny;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Ljny;->a:Landroid/widget/ImageView;

    return-object v0
.end method
