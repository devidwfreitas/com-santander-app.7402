.class public Llaj;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 72
    const v0, 0x7f100e10

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llaj;->a:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f100e11

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Llaj;->b:Landroid/widget/ImageButton;

    .line 74
    return-void
.end method

.method static synthetic a(Llaj;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Llaj;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Llaj;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Llaj;->b:Landroid/widget/ImageButton;

    return-object v0
.end method
