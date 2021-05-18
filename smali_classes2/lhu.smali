.class public Llhu;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field final synthetic a:Llhs;

.field private b:Landroid/widget/ImageButton;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Llhs;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Llhu;->a:Llhs;

    .line 91
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 92
    invoke-direct {p0, p2}, Llhu;->a(Landroid/view/View;)V

    .line 93
    return-void
.end method

.method static synthetic a(Llhu;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Llhu;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 96
    const v0, 0x7f100f7a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Llhu;->b:Landroid/widget/ImageButton;

    .line 97
    const v0, 0x7f1010b2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llhu;->c:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f1010b1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Llhu;->d:Landroid/widget/ImageView;

    .line 99
    const v0, 0x7f1010af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llhu;->e:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f10095d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llhu;->f:Landroid/widget/TextView;

    .line 101
    const v0, 0x7f1004f7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llhu;->g:Landroid/widget/TextView;

    .line 102
    const v0, 0x7f1010b3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Llhu;->h:Landroid/view/View;

    .line 103
    const v0, 0x7f1010b4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llhu;->i:Landroid/widget/TextView;

    .line 104
    return-void
.end method

.method static synthetic b(Llhu;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Llhu;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Llhu;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Llhu;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Llhu;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Llhu;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Llhu;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Llhu;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Llhu;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Llhu;->b:Landroid/widget/ImageButton;

    return-object v0
.end method
