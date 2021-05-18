.class public Llkr;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field final synthetic a:Llko;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Llko;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Llkr;->a:Llko;

    .line 97
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 98
    invoke-direct {p0, p2}, Llkr;->a(Landroid/view/View;)V

    .line 99
    return-void
.end method

.method static synthetic a(Llkr;)Landroid/view/View;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Llkr;->e:Landroid/view/View;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 103
    const v0, 0x7f10067e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Llkr;->b:Landroid/widget/ImageView;

    .line 104
    const v0, 0x7f100680

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llkr;->c:Landroid/widget/TextView;

    .line 105
    const v0, 0x7f100681

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llkr;->d:Landroid/widget/TextView;

    .line 106
    const v0, 0x7f1004ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Llkr;->e:Landroid/view/View;

    .line 107
    return-void
.end method

.method static synthetic b(Llkr;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Llkr;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Llkr;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Llkr;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Llkr;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Llkr;->d:Landroid/widget/TextView;

    return-object v0
.end method
