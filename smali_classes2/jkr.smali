.class public Ljkr;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 87
    const v0, 0x7f1004a6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ljkr;->a:Landroid/view/View;

    .line 88
    const v0, 0x7f1004a7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ljkr;->b:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f1003ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ljkr;->c:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f1004a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ljkr;->d:Landroid/widget/ImageView;

    .line 91
    return-void
.end method

.method static synthetic a(Ljkr;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Ljkr;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Ljkr;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Ljkr;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Ljkr;)Landroid/view/View;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Ljkr;->a:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Ljkr;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Ljkr;->d:Landroid/widget/ImageView;

    return-object v0
.end method
