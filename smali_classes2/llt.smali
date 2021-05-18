.class Lllt;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field final synthetic a:Lllq;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/FrameLayout;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lllq;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lllt;->a:Lllq;

    .line 111
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 112
    invoke-direct {p0, p2}, Lllt;->a(Landroid/view/View;)V

    .line 113
    return-void
.end method

.method static synthetic a(Lllt;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lllt;->d:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 116
    const v0, 0x7f1010f7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lllt;->b:Landroid/widget/ImageView;

    .line 117
    const v0, 0x7f1010f8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lllt;->c:Landroid/widget/TextView;

    .line 118
    const v0, 0x7f100433

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lllt;->d:Landroid/widget/FrameLayout;

    .line 119
    const v0, 0x7f1010f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lllt;->e:Landroid/view/View;

    .line 120
    return-void
.end method

.method static synthetic b(Lllt;)Landroid/view/View;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lllt;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lllt;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lllt;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Lllt;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lllt;->c:Landroid/widget/TextView;

    return-object v0
.end method
