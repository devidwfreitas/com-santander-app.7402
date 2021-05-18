.class public Llvi;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 151
    invoke-direct {p0, p1}, Llvi;->a(Landroid/view/View;)V

    .line 152
    return-void
.end method

.method static synthetic a(Llvi;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Llvi;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 155
    const v0, 0x7f1010e6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Llvi;->a:Landroid/widget/ImageView;

    .line 156
    const v0, 0x7f10006e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llvi;->b:Landroid/widget/Button;

    .line 157
    const v0, 0x7f100e39

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llvi;->c:Landroid/widget/TextView;

    .line 158
    const v0, 0x7f10057e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Llvi;->d:Landroid/view/View;

    .line 159
    return-void
.end method

.method static synthetic b(Llvi;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Llvi;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Llvi;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Llvi;->b:Landroid/widget/Button;

    return-object v0
.end method
