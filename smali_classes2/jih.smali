.class public Ljih;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 94
    const v0, 0x7f1004a6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ljih;->a:Landroid/view/View;

    .line 95
    const v0, 0x7f1004a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ljih;->b:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f1004a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ljih;->c:Landroid/widget/ImageView;

    .line 97
    return-void
.end method

.method static synthetic a(Ljih;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Ljih;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Ljih;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Ljih;->c:Landroid/widget/ImageView;

    return-object v0
.end method
