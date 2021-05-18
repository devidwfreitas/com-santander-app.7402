.class Llkk;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field final synthetic a:Llki;

.field private b:Landroid/widget/ImageButton;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/support/v7/widget/CardView;


# direct methods
.method public constructor <init>(Llki;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Llkk;->a:Llki;

    .line 107
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 108
    invoke-direct {p0, p2}, Llkk;->a(Landroid/view/View;)V

    .line 109
    return-void
.end method

.method static synthetic a(Llkk;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Llkk;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 112
    const v0, 0x7f100f7a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Llkk;->b:Landroid/widget/ImageButton;

    .line 113
    const v0, 0x7f1010b2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llkk;->c:Landroid/widget/TextView;

    .line 114
    const v0, 0x7f1010b1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Llkk;->d:Landroid/widget/ImageView;

    .line 115
    const v0, 0x7f10095d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llkk;->e:Landroid/widget/TextView;

    .line 116
    const v0, 0x7f1010af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llkk;->f:Landroid/widget/TextView;

    .line 117
    const v0, 0x7f1010e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Llkk;->g:Landroid/view/View;

    .line 118
    const v0, 0x7f1010b4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llkk;->h:Landroid/widget/TextView;

    .line 119
    const v0, 0x7f100f86

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Llkk;->i:Landroid/view/View;

    .line 120
    const v0, 0x7f1004f7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llkk;->j:Landroid/widget/TextView;

    .line 121
    const v0, 0x7f1010e4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Llkk;->k:Landroid/support/v7/widget/CardView;

    .line 122
    return-void
.end method

.method static synthetic b(Llkk;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Llkk;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Llkk;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Llkk;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Llkk;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Llkk;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Llkk;)Landroid/support/v7/widget/CardView;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Llkk;->k:Landroid/support/v7/widget/CardView;

    return-object v0
.end method
