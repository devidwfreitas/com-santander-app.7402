.class public Ljhq;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 134
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 135
    const v0, 0x7f100494

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ljhq;->a:Landroid/widget/TextView;

    .line 136
    const v0, 0x7f100496

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ljhq;->b:Landroid/widget/TextView;

    .line 137
    const v0, 0x7f100489

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ljhq;->c:Landroid/widget/TextView;

    .line 138
    const v0, 0x7f100498

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ljhq;->d:Landroid/widget/TextView;

    .line 139
    const v0, 0x7f100499

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ljhq;->e:Landroid/widget/ImageView;

    .line 140
    const v0, 0x7f100493

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ljhq;->f:Landroid/widget/LinearLayout;

    .line 141
    const v0, 0x7f100495

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ljhq;->g:Landroid/widget/LinearLayout;

    .line 142
    const v0, 0x7f100497

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ljhq;->h:Landroid/widget/LinearLayout;

    .line 143
    return-void
.end method

.method static synthetic a(Ljhq;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Ljhq;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Ljhq;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Ljhq;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Ljhq;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Ljhq;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Ljhq;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Ljhq;->h:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic e(Ljhq;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Ljhq;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Ljhq;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Ljhq;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic g(Ljhq;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Ljhq;->e:Landroid/widget/ImageView;

    return-object v0
.end method
