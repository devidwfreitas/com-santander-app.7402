.class public Llub;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field final synthetic a:Lltz;

.field private b:Landroid/widget/FrameLayout;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lltz;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Llub;->a:Lltz;

    .line 87
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 88
    invoke-direct {p0, p2}, Llub;->a(Landroid/view/View;)V

    .line 89
    return-void
.end method

.method static synthetic a(Llub;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Llub;->b:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 92
    const v0, 0x7f1010b9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Llub;->b:Landroid/widget/FrameLayout;

    .line 93
    const v0, 0x7f100043

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Llub;->c:Landroid/widget/LinearLayout;

    .line 94
    const v0, 0x7f1009c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llub;->d:Landroid/widget/TextView;

    .line 95
    const v0, 0x7f1010bb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llub;->e:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f1010bc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llub;->f:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f100e31

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llub;->g:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f1010ba

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Llub;->h:Landroid/widget/ImageView;

    .line 99
    const v0, 0x7f100417

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llub;->i:Landroid/widget/TextView;

    .line 100
    return-void
.end method

.method static synthetic b(Llub;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Llub;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Llub;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Llub;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Llub;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Llub;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Llub;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Llub;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Llub;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Llub;->i:Landroid/widget/TextView;

    return-object v0
.end method
