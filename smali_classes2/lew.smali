.class public Llew;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field final synthetic a:Llev;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>(Llev;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Llew;->a:Llev;

    .line 93
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 94
    invoke-direct {p0, p2}, Llew;->a(Landroid/view/View;)V

    .line 96
    return-void
.end method

.method static synthetic a(Llew;)Landroid/view/View;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Llew;->f:Landroid/view/View;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 99
    const v0, 0x7f10012d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Llew;->b:Landroid/widget/ImageView;

    .line 100
    const v0, 0x7f100a53

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llew;->c:Landroid/widget/TextView;

    .line 101
    const v0, 0x7f100a54

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llew;->d:Landroid/widget/TextView;

    .line 102
    const v0, 0x7f100a55

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llew;->e:Landroid/widget/TextView;

    .line 103
    const v0, 0x7f100a50

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Llew;->f:Landroid/view/View;

    .line 104
    const v0, 0x7f100a51

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Llew;->g:Landroid/view/View;

    .line 105
    return-void
.end method

.method static synthetic b(Llew;)Landroid/view/View;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Llew;->g:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Llew;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Llew;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Llew;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Llew;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Llew;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Llew;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Llew;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Llew;->b:Landroid/widget/ImageView;

    return-object v0
.end method
