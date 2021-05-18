.class public Llvy;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 152
    invoke-direct {p0, p1}, Llvy;->a(Landroid/view/View;)V

    .line 153
    return-void
.end method

.method static synthetic a(Llvy;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Llvy;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 156
    const v0, 0x7f100579

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Llvy;->a:Landroid/widget/LinearLayout;

    .line 157
    const v0, 0x7f10057a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Llvy;->b:Landroid/view/View;

    .line 158
    const v0, 0x7f100578

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Llvy;->c:Landroid/widget/ImageView;

    .line 159
    const v0, 0x7f10057b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Llvy;->d:Landroid/view/View;

    .line 160
    const v0, 0x7f1009c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llvy;->e:Landroid/widget/TextView;

    .line 161
    const v0, 0x7f10038a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llvy;->f:Landroid/widget/TextView;

    .line 162
    const v0, 0x7f10057e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Llvy;->g:Landroid/view/View;

    .line 163
    return-void
.end method

.method static synthetic b(Llvy;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Llvy;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Llvy;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Llvy;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Llvy;)Landroid/view/View;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Llvy;->b:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Llvy;)Landroid/view/View;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Llvy;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Llvy;)Landroid/view/View;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Llvy;->g:Landroid/view/View;

    return-object v0
.end method
